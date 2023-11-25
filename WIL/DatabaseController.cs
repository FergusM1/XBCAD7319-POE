using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Threading.Tasks;

namespace WIL
{
    public static class DatabaseController
    {
        private static string connString = System.Configuration.ConfigurationManager.ConnectionStrings["AzureDatabase"].ConnectionString;
        public static List<string> emails = new List<string>();
        public static DataTable dataTable = new DataTable();
        public static int JobID;
        public static byte[] file;
        public static string contentType;


        public static Task<bool> AddNewAdmin(string username, string password)
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("INSERT INTO Administrator VALUES(@username, @password)", sqlConnection))
                    {
                        sqlCommand.Parameters.AddWithValue("@username", username);
                        sqlCommand.Parameters.AddWithValue("@password", password);
                        await sqlConnection.OpenAsync();
                        int i = await sqlCommand.ExecuteNonQueryAsync();
                        if (i == 1)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }


        public static Task<bool> AddCustomerEmail(string email)
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("INSERT INTO EmailPromotions VALUES(@email)", sqlConnection))
                    {
                        sqlCommand.Parameters.AddWithValue("@email", email);
                        await sqlConnection.OpenAsync();
                        int i = await sqlCommand.ExecuteNonQueryAsync();
                        if (i == 1)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }

        public static Task<bool> AdminLogin(string username, string password)
        {
            return Task.Run(async () =>
            {
                try
                {
                    using (var sqlConnection = new SqlConnection(connString))
                    {
                        using (var sqlCommand = new SqlCommand("SELECT * FROM Administrator WHERE AdUsername = @username AND AdPassword = @password", sqlConnection))
                        {
                            sqlCommand.Parameters.AddWithValue("@username", username);
                            sqlCommand.Parameters.AddWithValue("@password", password);
                            await sqlConnection.OpenAsync();
                            SqlDataReader reader = await sqlCommand.ExecuteReaderAsync();
                            if (await reader.ReadAsync())
                            {

                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
                 catch (SqlException ex) when (ex.IsTransientError())
                {
                    await Task.Delay(2000);
                    return true;
                }
        });
        }

        public static Task<bool> CheckAdminDetails(string username, string password)
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("SELECT * FROM Administrator WHERE AdUsername = @username OR AdPassword = @password", sqlConnection))
                    {
                        sqlCommand.Parameters.AddWithValue("@username", username);
                        sqlCommand.Parameters.AddWithValue("@password", password);
                        await sqlConnection.OpenAsync();
                        SqlDataReader reader = await sqlCommand.ExecuteReaderAsync();
                        if (await reader.ReadAsync())
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }

        public static Task<bool> AddJobApplication(string name, string email)
        {
            return Task.Run(async () =>
             {
                 using (var sqlConnection = new SqlConnection(connString))
                 {
                     using (var sqlCommand = new SqlCommand("INSERT INTO JobApplications VALUES(@name, @email)", sqlConnection))
                     {

                         sqlCommand.Parameters.AddWithValue("@name", name);
                         sqlCommand.Parameters.AddWithValue("@email", email);
                         await sqlConnection.OpenAsync();
                         int i = await sqlCommand.ExecuteNonQueryAsync();
                         if (i == 1)
                         {
                             return true;
                         }
                         else
                         {
                             return false;
                         }
                     }
                 }
             });
        }

        public static Task<bool> AddCV(string fileName, string contentType, Stream Data)
        {
            return Task.Run(async () =>
            {
                using (BinaryReader br = new BinaryReader(Data))
                {
                    byte[] bytes = br.ReadBytes((int)Data.Length);
                    using (var sqlConnection = new SqlConnection(connString))
                    {
                        using (var sqlCommand = new SqlCommand("INSERT INTO CV_Files VALUES(@id, @name, @contenttype, @data)", sqlConnection))
                        {
                            sqlCommand.Parameters.AddWithValue("@id", JobID);
                            sqlCommand.Parameters.AddWithValue("@name", fileName);
                            sqlCommand.Parameters.AddWithValue("@contenttype", contentType);
                            sqlCommand.Parameters.AddWithValue("@data", bytes);
                            await sqlConnection.OpenAsync();
                            int i = await sqlCommand.ExecuteNonQueryAsync();
                            if (i == 1)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
            });
        }
        public static Task<bool> GetApplicationID(string name, string email)
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("SELECT * FROM JobApplications WHERE Name = @name AND Email = @email", sqlConnection))
                    {
                        sqlCommand.Parameters.AddWithValue("@name", name);
                        sqlCommand.Parameters.AddWithValue("@email", email);
                        await sqlConnection.OpenAsync();
                        SqlDataReader reader = await sqlCommand.ExecuteReaderAsync();
                        if (await reader.ReadAsync())
                        {
                            JobID = (int)reader["JobID"];
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }

        public static Task<bool> GetFile()
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("SELECT Data, ContentType FROM CV_Files WHERE JobID = @id", sqlConnection))
                    {
                        sqlCommand.Parameters.AddWithValue("@id", JobID);
                        await sqlConnection.OpenAsync();
                        SqlDataReader reader = await sqlCommand.ExecuteReaderAsync();
                        if (await reader.ReadAsync())
                        {
                            file = (byte[])reader["Data"];
                            contentType = reader["ContentType"].ToString();
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }


        public static Task<bool> ViewData()
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("SELECT Name, Email, FileName FROM CV_Files, JobApplications WHERE CV_Files.JobId = JobApplications.JobID", sqlConnection))
                    {
                        dataTable.Clear();
                        await sqlConnection.OpenAsync();
                        SqlDataAdapter sda = new SqlDataAdapter(sqlCommand);             
                        if (sda.Fill(dataTable) > 0)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }

        public static Task<bool> GetEmails()
        {
            return Task.Run(async () =>
            {
                try
                {
                    using (var sqlConnection = new SqlConnection(connString))
                    {
                        using (var sqlCommand = new SqlCommand("SELECT * FROM EmailPromotions", sqlConnection))
                        {
                            sqlCommand.Parameters.AddWithValue("@id", JobID);
                            await sqlConnection.OpenAsync();
                            SqlDataReader reader = await sqlCommand.ExecuteReaderAsync();
                            if (await reader.ReadAsync())
                            {
                                while (await reader.ReadAsync())
                                {
                                    emails.Add(reader["PromEmail"].ToString());
                                }
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
                catch (SqlException ex) when (ex.IsTransientError())
                {
                    await Task.Delay(2000);
                    return true;
                }
            });

        }
        public static Task<bool> DeleteJobApplication()
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("DELETE FROM JobApplications WHERE JobApplications.JobID = @ID;", sqlConnection))
                    {

                        sqlCommand.Parameters.AddWithValue("@ID", JobID);
                        await sqlConnection.OpenAsync();
                        int i = await sqlCommand.ExecuteNonQueryAsync();
                        if (i == 1)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }

        public static Task<bool> DeleteCVFile()
        {
            return Task.Run(async () =>
            {
                using (var sqlConnection = new SqlConnection(connString))
                {
                    using (var sqlCommand = new SqlCommand("DELETE FROM CV_Files WHERE JobId = @ID;", sqlConnection))
                    {

                        sqlCommand.Parameters.AddWithValue("@ID", JobID);
                        await sqlConnection.OpenAsync();
                        int i = await sqlCommand.ExecuteNonQueryAsync();
                        if (i == 1)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            });
        }


        private static bool IsTransientError(this SqlException ex)
        {
            // List of transient error numbers (add more as needed)
            int[] transientErrorNumbers = { -2, 4060, 40197, 40501, 40613, 0 };

            foreach (var errorNumber in transientErrorNumbers)
            {
                if (ex.Number == errorNumber)
                {
                    return true;
                }
            }

            return false;
        }
    }
}
