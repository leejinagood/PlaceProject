<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>���� ȸ������</title>
	<style type="text/css">
		#wrapper{
			width:400px;
			margin: 0 auto;
			
		}
	</style>

</head>
<body>
	
	<div id="wrapper">
		<img src="image/honeybee.png" width="30%">
		<form action='MB.jsp'>
		  <input type='radio' name='AllCelect' value='AC'>
		  	���� �̿���, �������� ���� �� �̿뿡 ��� �����մϴ�.<br><br>
		  <input type='radio' name='yarkg' value='' >
		  	���� �̿��� ����(�ʼ�)<br>
		  <textarea name="wow" rows="10" cols="50" readonly>
		   ������ ���Ű��� ȯ���մϴ�.
		   ���� ���� �� ��ǰ(����'����')�� �̿��� �ּż� �����մϴ�.
		   �� ����� ���� ������ �̿�� ������ �����ϼž� �Ǵ� �̸�,��ȭ��ȣ ���� �ֽ��ϴ�.
		   �Ǹ� ������ ������ �δ㽺����� �е��� �����̳� �г������� �̸��� �ۼ��ϼŵ� �˴ϴ�.
		  </textarea>
		  <br>
		  <input type='radio' name='fruits' value='apple' >�������� ���� �� �̿� ����<br>
			<br>
		  <textarea name="wow2" rows="10" cols="50" readonly>
		   �����е��� ������ ���� �������� ��ũ��� ���Ŀ� ���� ���� �� �̸� �̺�Ʈ, ����
		   �̿뿡 �־� �����ڸ� ��Ȯ�� �ϱ����Ͽ� �����մϴ�.
		  </textarea>
	
		  <br>
		  <input type='submit' value="Ȯ��">
		  <input type='reset' value="���">
		</form>
	</div>
</body>
