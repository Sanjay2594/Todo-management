<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>	

<div class="container mt-4">
    <h2 class="mb-4">Welcome, ${name}!</h2>  <!-- Changed to h2 for consistency -->

    <p class="lead">Here, you can efficiently manage all your tasks and stay organized. 
       Get started by viewing, updating, or adding new tasks to your personal Todo list.</p>

    <p>
        <a href="list-todos" class="btn btn-primary">Manage Your Todos</a>
    </p>

    <hr>

    <p>If you need any assistance or further help, feel free to <a href="#">contact support</a>.</p>
</div>

<%@ include file="common/footer.jspf" %>
