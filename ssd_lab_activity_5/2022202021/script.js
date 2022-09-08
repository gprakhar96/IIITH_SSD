var count = 0;
document.querySelector("#addStudent").addEventListener('click',function(){
    var studentName = document.querySelector("#student_name").value;
    var rollNo = document.querySelector("#roll_no").value;
    console.log(studentName, rollNo);

    var tab = document.querySelector("#students_table");
    if(studentName=="" || rollNo==""){
        alert("Invalid Entry");
    }
    else
    {
        count = count + 1;
        var row = tab.insertRow(count);
        var roll_no_cell = row.insertCell(0);
        var student_name_cell = row.insertCell(1);

        roll_no_cell.innerHTML = rollNo;
        student_name_cell.innerHTML = studentName;
        document.querySelector("#student_name").value = null;
        document.querySelector("#roll_no").value = null;
    }
    
}) 

document.querySelector("#deleteStudent").addEventListener('click', function(){
    var tab = document.querySelector('#deleteStudent');
    var row = tab.rows[count];
    console.log(tab.row[count]);
    console.log(tab.rows[count]);
    console.log(count);
    if(count!=0){
        tab.deleteRow(row);
        count = count - 1;
    }
    else{
        alert("No entries to delete");
    }
})