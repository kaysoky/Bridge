<%@ include file="directives.jsp" %>
<sage:minimal code="Profile">
    <h3><spring:message code="ProfileFor"/> ${profileForm.displayName}</h3>
    <sage:formErrors formName="profileForm"/>
    <c:url var="profileUrl" value="/profile.html"/>
    <form:form role="form" modelAttribute="profileForm" method="post" action="${profileUrl}" enctype="multipart/form-data">
        <spring:hasBindErrors name="*">
            <div class="alert alert-danger">
                <form:errors htmlEscape="false"></form:errors>
            </div>
        </spring:hasBindErrors>
        
        <b><spring:message code="PhotoOrAvatar"/></b>
        <div class="avatar_container">
            <img id="photoImg" src=""/>
        </div>
        
        <div style="position:relative; margin-bottom: 2rem">
            <a class='btn btn-sm btn-default' href='javascript:;'><spring:message code="ChooseFile"/>
                <input id="photoFileInput" type="file" name="photoFile" size="40"/>
            </a>
        </div>
        
        <sage:text field="displayName">
        <span class="help-block">
            <spring:message code="displayName.help2"/>
        </span>
        </sage:text>
        <sage:text field="firstName"/>
        <sage:text field="lastName"/>
        <sage:textarea field="summary"/>
        <sage:submit code="Save"/>
        <sage:cancel url="${pageContext.request.origin}"/>
        <a class="btn btn-sm btn-default right" href='<c:url value="/requestResetPassword.html"/>'>
            <spring:message code="ChangePassword"/>
        </a>
    </form:form>
</sage:minimal>