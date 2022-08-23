
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

    <link rel="stylesheet" type="text/css" href="/ex/resources/css/shopping/page1_style1.css?after">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/shopping/page1_style2.css?after">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/shopping/remocon.css?after">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/style_footer.css?after">
    

    <title>쇼핑몰</title>

    <script> 
    // ================== jQuery =====================
        $(document).ready(function(){
            // ================= 태그 ================== //
            $(":checkbox").click(function(){
                $("#wine .product").hide();

                if($(":checkbox[value='vintage']").is(":checked")){
                    // alert("체크박스 체크했음!!");
                    $(".tag_vintage>.product").show();
                } 
                
                if($(":checkbox[value='priceNess']").is(":checked")){
                    // alert("priceNess");
                    $(".tag_priceNess > .product").show();
                } 
                
                if($(":checkbox[value='priceLess']").is(":checked")){
                    // alert("priceLess");
                    $(".tag_priceLess > .product").show();
                }
                
                if($(":checkbox[value='soso']").is(":checked")){
                    // alert("soso");
                    $(".tag_soso > .product").show();
                }

                if($(":checkbox[value='vintage']").is(":not(:checked")){
                    if($(":checkbox[value='priceNess']").is(":not(:checked")){
                        if($(":checkbox[value='priceLess']").is(":not(:checked")){
                        	 if($(":checkbox[value='soso']").is(":not(:checked")){
                                 $("#wine .product").show();
                        	 }
                        }
                    }
                }
            });

            // ================= 태그 ================== //
            // ================= 탭 ================== //
            $('#tab_2').hover(
                function() {
                    // do this on hover
                    $(this).animate({
                        backgroundColor: '#ffa500',
                    }, 'fast');
                    $("#tab_1").animate({
                        backgroundColor: '#87ceeb'
                    }, 'fast');
                    $("strong").animate({
                        color: '#87ceeb'
                    }, 'fast');
                    $(this).animate({
                        height: '80px'
                    },'fast');
                }, 
                function() {
                    // do this on hover out
                    $("#tab_1").animate({
                        backgroundColor: '#ffa500'
                    }, 'fast');
                    $(this).animate({
                        backgroundColor: '#87ceeb'
                    }, 'fast');
                    $("#strong_1").animate({
                        color: '#ffa500'
                    }, 'fast');
                    $(this).animate({
                        height: '55px'
                    },'fast');
                }
            );
            // =================================== //
            $('#tab_1').hover(
                function () {
                    $(this).animate({
                        height: '80px'
                    },'fast');
                },
                function () {
                    $(this).animate({
                        height: '55px'
                    },'fast');
                }              
            );
            // ================= 탭 ================== //
            // ================= 더보기 ================== //
                $("#btn_more").click(function(){
                    $("#toggle_box1").animate({
                        height: 'toggle'
                    })
                })

                $(document).load(function(){
                    $("#btn_more").trigger("click");
                })

            // ================= 더보기 ================== //
        })
    	// ================== 로그인 체크 =====================
    	

    </script>
</head>
