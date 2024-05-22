$(document).ready(function () {
    $.post("api.aspx", {
        action: "LietKeTopScorers"
    }, function (data) {
        // Xử lý dữ liệu JSON nhận được
        console.log(data); // Ví dụ: in ra console
        var jsonObjectData = JSON.parse(data);

        // Chuyển đổi dữ liệu JSON thành mảng (nếu cần)
        var dataArray = jsonObjectData.data;

        // Tạo bảng HTML
        var tableHtml = `
            <table>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Player Name</th>
                        <th>Number Of Goals</th>
                    </tr>
                </thead>
                <tbody>
        `;

        // Dữ liệu cho biểu đồ
        var playerNames = [];
        var numberOfGoals = [];

        // Lặp qua mỗi phần tử trong mảng dữ liệu
        dataArray.forEach((item, index) => {
            playerNames.push(item.PlayerName);
            numberOfGoals.push(item.NumberOfGoals);

            tableHtml += `
                <tr class="player-row" data-index="${index}">
                    <td>${index + 1}</td>
                    <td class="player-name">${item.PlayerName}</td>
                    <td>${item.NumberOfGoals}</td>
                </tr>
                <tr class="player-details" id="details-${index}" style="display: none;">
                    <td colspan="3">
                          

                        <p>Position: ${item.Position}</p>
                        <p>Nationality: ${item.Nationality}</p>
                        <p>Date Of Birth: ${item.DateOfBirth}</p>
                        <p>Team Name: ${item.TeamName}</p>
                    </td>
                </tr>
            `;
        });

        tableHtml += `
                </tbody>
            </table>
        `;

        // Đưa bảng HTML vào một div có id là "table-container"
        $('#table-container').html(tableHtml);

        // Thêm sự kiện nhấp chuột vào hàng của cầu thủ
        $('.player-name').on('click', function () {
            var index = $(this).closest('tr').data('index');
            $('#details-' + index).toggle();
        });

        // Vẽ biểu đồ sử dụng Chart.js và chartjs-plugin-datalabels
        var ctx = document.getElementById('goalsChart').getContext('2d');
        var goalsChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: playerNames,
                datasets: [{
                    label: 'Number of Goals',
                    data: numberOfGoals,
                    backgroundColor: 'rgba(75, 192, 192, 0.5)', // Tăng độ trong suốt
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 2, // Tăng độ dày của đường viền
                    barPercentage: 1 // Điều chỉnh độ rộng của các cột
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Top Scorers'
                    },
                    datalabels: {
                        color: 'white', // Màu chữ
                        font: {
                            weight: 'bold', // Độ đậm của chữ
                            size: 14 // Kích thước của chữ
                        }
                    }
                }
            },
            plugins: [ChartDataLabels]
        });
    });
});
