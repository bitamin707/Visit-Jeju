<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/ex/resources/smart_editor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>

<body>
<textarea name="ir1" id="ir1" rows="10" cols="100">
에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.
</textarea>
</body>

</html>
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
 oAppRef: oEditors,
 elPlaceHolder: "ir1",
 sSkinURI: "/ex/resources/smart_editor/SmartEditor2Skin.html",
 fCreator: "createSEditor2"
});
</script>