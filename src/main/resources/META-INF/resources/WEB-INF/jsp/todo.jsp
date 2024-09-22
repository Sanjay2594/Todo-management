<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>	

<div class="container mt-4">
    <h2 class="mb-4">Enter Todo Details</h2>  

    <form:form method="post" modelAttribute="todo">
        <fieldset class="form-group mb-3">
            <form:label path="description" class="form-label">Description</form:label>
            <form:input type="text" path="description" class="form-control w-25" required="required"/>  
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>

        <fieldset class="form-group mb-3">
            <form:label path="targetDate" class="form-label">Target Date</form:label>
            <form:input type="text" path="targetDate" class="form-control w-25" id="targetDate" required="required"/>  
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>

        <form:input type="hidden" path="id"/>
        <form:input type="hidden" path="done"/>

        <input type="submit" class="btn btn-success" value="Submit"/>
    </form:form>
</div>

<%@ include file="common/footer.jspf" %>

<script type="text/javascript">
    $(document).ready(function () {
        $('#targetDate').datepicker({
            format: 'yyyy-mm-dd'
        });
    });
</script>
