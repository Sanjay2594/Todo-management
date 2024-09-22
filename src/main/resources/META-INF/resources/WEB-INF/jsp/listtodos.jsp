<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<body>
    <div class="container mt-4">
        <div class="alert alert-primary" role="alert">
            Welcome, ${name}! You are on the List Todos page.
        </div>
        <hr>
        <h2 class="my-4">Your Todos:</h2>
        <table class="table table-striped table-bordered">
            <thead class="thead-light">
                <tr>
                    <th>Description</th>
                    <th>Target Date</th>
                    <th>Is Done?</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                        <td>${todo.description}</td>
                        <td>${todo.targetDate}</td>
                        <td>${todo.done}</td>
                        <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning btn-sm">Delete</a></td>
                        <td><a href="update-todo?id=${todo.id}" class="btn btn-success btn-sm">Update</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="mt-3">
            <a href="add-todo" class="btn btn-success">Add Todo</a>
        </div>
    </div>

<%@ include file="common/footer.jspf" %>
</body>
