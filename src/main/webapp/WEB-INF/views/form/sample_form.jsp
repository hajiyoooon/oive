<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<h3>학력사항을 적어주세요.</h3>
<form class="profile">
  <div class="form-row">
    <div class="col form-group">
      <label for="" class="">�븰援먮챸</label>
      <input type="text" name="" value="" class="form-control">
    </div>
    <div class="col form-group">
      <label for="">�븰怨쇰챸</label>
      <input type="text" name="" value="" class="form-control">
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
      <label for="">�쟾怨�</label>
      <select type="select" name="" value="" class="custom-select">
        <option value="">�떒�씪�쟾怨�</option>
        <option value="">1</option>
      </select>
    </div>
    <div class="col form-group">
      <label for="">�븰�쐞</label>
      <select type="select" name="" value="" class="custom-select">
        <option value="">�꽍�궗�븰�쐞</option>
        <option value="">諛뺤궗</option>
      </select>
    </div>
    <div class="col form-group">
      <label for="" class="">�렪�엯</label>
      <input type="checkbox" name="" value="" class="">
    </div>
  </div>

  <div class="form-row">
    <div class="col form-group">
      <label for="">珥앺븰�젏</label>
      <input type="text" name="" value="" class="form-control">
    </div>
    <div class="col form-group">
      <label for="">�쟾怨듯븰�젏</label>
      <input type="text" name="" value="" class="form-control">
    </div>
    <div class="col form-group">
      <label for="" class="">理쒓퀬�븰�젏</label>
      <select name="" class="custom-select">
             <option value="">4.7</option>
      </select>
    </div>
  </div>
  <div class="form-row">
    <div class="col form-group">
      <label for="">愿��젴 �뙆�씪</label>
      <input type="file" name="" value="">
    </div>
  </div>
  <div class="form-row">
    <button class="btn-sm btn-success" type="submit" name="button">�닔�젙</button>
    <button class="btn-sm btn-danger" type="button" name="button">�궘�젣</button>
    <button id="sample" class="btn-sm btn-primary" type="button" name="button" onclick="add(id);false;">異붽�</button>
  </div>
 </form> 
<div id="sample-add"><!-- 이곳에 추가된 form이 붙음.--></div>