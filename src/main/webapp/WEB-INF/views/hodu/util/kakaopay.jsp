<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
    String name = (String)request.getAttribute("member_name");
    String email = (String)request.getAttribute("member_email");
    String phone = (String)request.getAttribute("member_phone");
    //String address = (String)request.getAttribute("member_address");
  	int totalPrice = Integer.parseInt(request.getParameter("moneyforhodu")); //(int)request.getAttribute("totalPrice");   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
<form action="realHodu" method="POST" id="realhoduform">
<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
<input type="hidden" name="moneyforhodu"id="moneyforhodu" value=<%=totalPrice%>>
</form>
    <script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp42426889'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '호두 결제',
            amount : <%=totalPrice%>,
            buyer_email : '<%=email%>',
            buyer_name : '<%=name%>',
            buyer_tel : '<%=phone%>'
            
 	       //buyer_addr : '서울특별시 강남구 삼성동',
 	       //buyer_postcode : '123-456'
 	       //m_redirect_url : '/khx/payEnd.action'	// 결제 완료 후 보낼 컨트롤러의 메소드명
        }, function(rsp) {
            if ( rsp.success ) {
                
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        alert(msg);
                
                //성공시 이동할 페이지
                $("#realhoduform").submit();
                <%-- location.href='<%=request.getContextPath()%>/hodu/util/paySuccess?msg='+msg; --%>
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="<%=request.getContextPath()%>/hodu/util/chargehodu";
                alert(msg);
            }
        });
        
    });
    </script>
 
</body>
</html>