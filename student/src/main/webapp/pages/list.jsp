<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>人员列表</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .box {
            text-align: center;
        }

        input {
            width: 70px;
        }

        .box .top {
            font-size: 30px;
            margin-bottom: 50px;
        }

        .btn {
            width: 50px;
            
            background-color: rgb(224, 7, 7);
            color: white;
        }

        .bottom1 {
            font-size: 30px;
            margin-bottom: 50px;
        }

        li {
            width: 100px;

            display: inline-block;
            list-style: none;
            border: 1px solid black;
        }

        ul {
            display: flex;
            justify-content: center;
        }

        .firstLi li {
            height: 20px;
            width: 100px;
            background-color: rgb(0, 255, 34);
            border-radius:50%;
        }

        a{
            color: red;
        }
    </style>
</head>
<body>
    <div class="box">
        <div class="top">
            欢迎光临学生系统
        </div>
        <form class="centen">
            <span>学号：</span><input class="name" type="text" name="" id="">
            <span>名字：</span><input class="type" type="text">
            <span>班级：</span><input class="writer" type="text">
            <button class="btn">录入</button>
        </form>
        <div class="bottom1">
         
        </div>
        <div class="bottom2">
            <ul class="firstLi">
                <li>序号</li>
                <li>学号</li>
                <li>名字</li>
                <li>班级</li>
                <li>操作</li>
                <a href=""></a>
            </ul>
            <div class="bottom3">
                
            </div>
        </div>
    </div>
    <script>
        const bottom2 = document.querySelector(`.bottom2`)
        const type = document.querySelector(`.type`)
        const name = document.querySelector(`.name`)
        const writer = document.querySelector(`.writer`)
        const btn = document.querySelector(`.btn`)
        const btn1=document.querySelector(`.centen`)
        let num = 1
        
        let b3 = document.querySelector(`.bottom3`) 
        const books = JSON.parse(localStorage.getItem(`data`)) || []   

        function fa(e) {
            if(name.value!=0&&type.value!=0&&writer.value!=0&&e.target.tagName==`BUTTON`){
                console.log(e); 
            let book = {
                name: name.value,
                type: type.value,
                writer: writer.value,
            }       
            books.push(book) 
            localStorage.setItem(`data`, JSON.stringify(books))
            flash()  
            this.reset() 
        }
        }

        function flash(){ 
            let newArr = books.map(function (ele, num) {

                return `
            <ul>
            <li>${num+1}</li>
            <li>${ele.name}</li>
            <li>${ele.type}</li>

            <li>${ele.writer}</li>

            <li><a data-id="${num}">删除</a></li>
            </ul>
        `
            })
            

            b3.innerHTML = newArr.join(``)      
        }
       


        flash()      
        btn1.addEventListener(`click`, fa)  
        console.log(books);


        
        b3.addEventListener(`click`,function(e){
            if(e.target.tagName==`A`){  
                
                console.log(e.target.dataset.id)
                
                books.splice(e.target.dataset.id,1) 
                
                flash()  
                
                localStorage.setItem('data', JSON.stringify(books))
                
            }
        })


    </script>
</body>

</html>
