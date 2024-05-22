using SuatAn;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using Newtonsoft.Json;
using System.Collections.Generic;


namespace FootBall
{
    public partial class api : System.Web.UI.Page
    {


        public class Player
        {
            public string PlayerName { get; set; }
            public int NumberOfGoals { get; set; }
            public string Position { get; set; }
            public string Nationality { get; set; }
            public string DateOfBirth { get; set; }
            public string TeamName { get; set; }
        }

        public class DataTraVe
        {
            public int ok { get; set; }
            public string msg { get; set; }
            public List<Player> data { get; set; }
        }



        void TopScorers(string action)
        {
            // Lấy dữ liệu từ yêu cầu HTTP và tạo chuỗi JSON từ đó
            string jsonData = GetJsonDataFromRequest();

            SqlServer db = new SqlServer();
            SqlCommand cm = db.GetCmd("InsertTopScorers", action);

            switch (action)
            {
                case "LietKeTopScorers":
                    // Thêm tham số @jsonData và gán giá trị
                    cm.Parameters.Add("@jsonData", SqlDbType.NVarChar).Value = jsonData;
                    break;
            }

            // Thực thi truy vấn và nhận kết quả
            string json = (string)db.Scalar(cm);

            // Deserialize JSON string to object
            var jsonDataObject = JsonConvert.DeserializeObject<DataTraVe>(json);

            // Reverse the 'data' list
            jsonDataObject.data.Reverse();

            // Serialize the modified object back to JSON string
            string json_biendoi = JsonConvert.SerializeObject(jsonDataObject, Formatting.Indented);



            // Ghi kết quả ra response
            this.Response.Write(json_biendoi);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Lấy action từ request
            string action = Request["action"];

            switch (action)
            {
                case "LietKeTopScorers":
                    TopScorers(action);
                    break;
            }
        }

        private string GetJsonDataFromRequest()
        {
            // Phương thức này sẽ phân tích dữ liệu từ yêu cầu HTTP và trả về chuỗi JSON
            // Đây là nơi bạn sẽ xử lý dữ liệu từ yêu cầu và tạo chuỗi JSON tương ứng
            // Ví dụ:
            // string playerName = Request["PlayerName"];
            // int numberOfGoals = int.Parse(Request["NumberOfGoals"]);
            // string position = Request["Position"];
            // ... (tương tự với các trường khác)
            // Sau đó, tạo chuỗi JSON từ các giá trị thu thập được và trả về nó.

            // Ở đây tôi sẽ sử dụng một chuỗi JSON cố định như ví dụ:
            string jsonData = "{\"PlayerName\": \"Player1\", \"NumberOfGoals\": 10, \"Position\": \"Forward\", \"Nationality\": \"Country1\", \"DateOfBirth\": \"1990-01-01\", \"TeamName\": \"Team1\"}";

            return jsonData;
        }
    }
}
