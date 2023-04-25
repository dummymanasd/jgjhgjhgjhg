<!DOCTYPE html>
<html>
<head>
    <title>Student Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        table {
            margin: auto;
            width: 50%;
            border-collapse: collapse;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.3);
        }

        th {
            background-color: #0e81a5;
            color: white;
            font-weight: bold;
            padding: 10px;
            border-radius: 5px 5px 0px 0px;
            text-align: left;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .edit-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }

        .edit-link:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
<table>
    <tr>
        <th colspan="2">Student Information</th>
    </tr>
    <form method="post" action="">
        <input type="hidden" name="id" value="${student.id}">
        <tr>
            <td>Email:</td>
            <td>${student.email}</td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td>${student.DOB}</td>
        </tr>
        <tr>
            <td>ID Type:</td>
            <td>${student.id_Type}</td>
        </tr>
        <tr>
            <td>ID Number:</td>
            <td>${student.id_number}</td>
        </tr>
        <tr>
            <td>Authority:</td>
            <td>${student.authority}</td>
        </tr>
        <tr>
            <td>State:</td>
            <td>${student.state}</td>
        </tr>
        <tr>
            <td>Date:</td>
            <td>${student.date}</td>
        </tr>
        <tr>
            <td>Plate No:</td>
            <td>${student.plate_No}</td>
        </tr>
        <tr>
            <td>Manufacturer:</td>
            <td>${student.manufacturer}</td>
        </tr>
        <tr>
            <td>Motor Damage:</td>
            <td>${student.motor_Dmg}</td>
        </tr>
        <tr>
            <td>Plan:</td>
            <td>${student.plan}</td>
        </tr>
        <tr>
            <td>Validity Period:</td>
            <td>${student.validityPeriod}</td>
        </tr>
        <tr>
            <td>Mobile Number:</td>
            <td>${student.mobile_Number}</td>
        </tr>
        <tr>
            <td>E-Value:</td>
            <td>${student.evalue}</td>
        </tr>

        <tr>
            <td colspan="2">
                <a href="User?page=userEdit&id=${student.id}" class="edit-link">Edit</a>
                <a href="User?page=home" class="edit-link">Return</a>
            </td>
        </tr>
    </form>
</table>
</body>