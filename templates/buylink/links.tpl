﻿<div class="wrapper paper">
    <div class="container">
        <div class="row">
            {include file='left-menu.tpl'}
            <div class="col-md-9 right-content-paper plus">
                <div class="banner">
                    <img src="{$template_dir}/images/ad.png">
                </div>
                <div class="right-inner">
                    <h4 class="border-bold super-bold">Texlink đang chạy </h4>

                    <div class="buylinkmanage">
                        <div class="col-md-12">
                            <div class="blog-tabs">
                                <ul id="blog-tab" class="nav nav-tabs">
                                    <li class=""><a href="#blmtab1" data-toggle="tab">Textlink chưa thanh toán</a></li>
                                    <li class="active"><a href="#blmtab2" data-toggle="tab">Textlink đang chạy</a></li>
                                    <li class=""><a href="#blmtab3" data-toggle="tab">Textlink hết hạn</a></li>
                                    <li class=""><a href="#blmtab4" data-toggle="tab">Textlink đã hủy</a></li>
                                    <li class=""><a href="#blmtab5" data-toggle="tab">Textlink đã dừng lại</a></li>
                                    <li class=""><a href="#blmtab6" data-toggle="tab">Textlink bị từ chối</a></li>
                                </ul>
                                <div id="myTabContent" class="tab-content">

                                    <div class="tab-pane fade in" id="blmtab1">
                                        <form method="get" id="marketplaceFilter" class="form-horizontal">
                                            <div class="control-group">
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <input type="text" class="col-md-12 border-blue" name="keywords" value="Nhập từ khóa cần tìm 1" onfocus="updateTextFieldLabel(this, true, 'Nhập từ khóa cần tìm');" onblur="updateTextFieldLabel(this, false, 'Nhập từ khóa cần tìm');">

                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">

                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Hết hạn:</strong></label>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">

                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3 pull-left">
                                                        <button class="button blue-bold">Tìm Kiếm</button>
                                                    </div>
                                                    <div class="col-md-9 pull-right">
                                                        <div class="paging pull-right">
                                                            <span>1</span>&nbsp;&nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;">2</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=20&amp;numrows=25&amp;">3</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;"><i class="icon-next"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade active in" id="blmtab2">
                                        <form method="get" id="marketplaceFilter" class="form-horizontal">
                                            <div class="control-group">
                                                <div class="form-group">
                                                    <div class="col-md-5">
                                                        <input type="text" class="col-md-12 border-blue" name="keywords" value="Nhập từ khóa cần tìm" onfocus="updateTextFieldLabel(this, true, 'Nhập từ khóa cần tìm');" onblur="updateTextFieldLabel(this, false, 'Nhập từ khóa cần tìm');">

                                                    </div>
                                                    <div class="col-md-4">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Mã text --</option>
                                                            {section name=i loop=$all}
                                                                <option {if $all[i].adv_id  == $order_id} selected="selected" {/if} value="{$all[i].adv_id}">{$all[i].ad_des}</option>
                                                            {/section}

                                                        </select>
                                                    </div>


                                                </div>
                                                <div class="form-group">

                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Từ ngày:</strong></label>
                                                    <div class="col-md-3">
                                                        <input type="text" value="{$smarty.now|date_format:"%Y/%m/%d"}" name="buying_date" class="col-md-12">
                                                    </div>
                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Đến:</strong></label>
                                                    <div class="col-md-3">
                                                        <input type="text" value='{$smarty.now|date_format:"%Y/%m/%d"}' name="end_date" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3 pull-left">
                                                        <button class="button blue-bold">Tìm Kiếm</button>
                                                    </div>
                                                    <div class="col-md-9 pull-right">
                                                        <div class="paging pull-right">
                                                            <span>1</span>&nbsp;&nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;">2</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=20&amp;numrows=25&amp;">3</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;"><i class="icon-next"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="blmtab3">
                                        <form method="get" id="marketplaceFilter" class="form-horizontal">
                                            <div class="control-group">
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <input type="text" class="col-md-12 border-blue" name="keywords" value="Nhập từ khóa cần tìm 1" onfocus="updateTextFieldLabel(this, true, 'Nhập từ khóa cần tìm');" onblur="updateTextFieldLabel(this, false, 'Nhập từ khóa cần tìm');">

                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Hết hạn:</strong></label>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3 pull-left">
                                                        <button class="button blue-bold">Tìm Kiếm</button>
                                                    </div>
                                                    <div class="col-md-9 pull-right">
                                                        <div class="paging pull-right">
                                                            <span>1</span>&nbsp;&nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;">2</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=20&amp;numrows=25&amp;">3</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;"><i class="icon-next"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="blmtab4">
                                        <form method="get" id="marketplaceFilter" class="form-horizontal">
                                            <div class="control-group">
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <input type="text" class="col-md-12 border-blue" name="keywords" value="Nhập từ khóa cần tìm 1" onfocus="updateTextFieldLabel(this, true, 'Nhập từ khóa cần tìm');" onblur="updateTextFieldLabel(this, false, 'Nhập từ khóa cần tìm');">

                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Hết hạn:</strong></label>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3 pull-left">
                                                        <button class="button blue-bold">Tìm Kiếm</button>
                                                    </div>
                                                    <div class="col-md-9 pull-right">
                                                        <div class="paging pull-right">
                                                            <span>1</span>&nbsp;&nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;">2</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=20&amp;numrows=25&amp;">3</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;"><i class="icon-next"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="blmtab5">
                                        <form method="get" id="marketplaceFilter" class="form-horizontal">
                                            <div class="control-group">
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <input type="text" class="col-md-12 border-blue" name="keywords" value="Nhập từ khóa cần tìm 1" onfocus="updateTextFieldLabel(this, true, 'Nhập từ khóa cần tìm');" onblur="updateTextFieldLabel(this, false, 'Nhập từ khóa cần tìm');">

                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Hết hạn:</strong></label>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3 pull-left">
                                                        <button class="button blue-bold">Tìm Kiếm</button>
                                                    </div>
                                                    <div class="col-md-9 pull-right">
                                                        <div class="paging pull-right">
                                                            <span>1</span>&nbsp;&nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;">2</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=20&amp;numrows=25&amp;">3</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;"><i class="icon-next"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="blmtab6">
                                        <form method="get" id="marketplaceFilter" class="form-horizontal">
                                            <div class="control-group">
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <input type="text" class="col-md-12 border-blue" name="keywords" value="Nhập từ khóa cần tìm 1" onfocus="updateTextFieldLabel(this, true, 'Nhập từ khóa cần tìm');" onblur="updateTextFieldLabel(this, false, 'Nhập từ khóa cần tìm');">

                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Hết hạn:</strong></label>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3 pull-left">
                                                        <button class="button blue-bold">Tìm Kiếm</button>
                                                    </div>
                                                    <div class="col-md-9 pull-right">
                                                        <div class="paging pull-right">
                                                            <span>1</span>&nbsp;&nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;">2</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=20&amp;numrows=25&amp;">3</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;"><i class="icon-next"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="blmtab7">
                                        <!--<form method="get" id="marketplaceFilter" class="form-horizontal">
                                            <div class="control-group">
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <input type="text" class="col-md-12 border-blue" name="keywords" value="Nhập từ khóa cần tìm 1" onfocus="updateTextFieldLabel(this, true, 'Nhập từ khóa cần tìm');" onblur="updateTextFieldLabel(this, false, 'Nhập từ khóa cần tìm');">

                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="col-md-12" id="filterCategory" name="category_id" size="1">
                                                            <option label="-- All Categories --" value="0">-- Danh mục website --</option>
                                                            <option value="35" label="Agriculture">Agriculture</option>
                                                        </select>
                                                    </div>
                                                    <label for="inputEmail3" class="col-sm-2 control-label"><strong>Hết hạn:</strong></label>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="text" value="Mã textlink" onfocus="updateTextFieldLabel(this, true, 'Mã textlink');" onblur="updateTextFieldLabel(this, false, 'Mã textlink');" name="domain" class="col-md-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-3 pull-left">
                                                        <button class="button blue-bold">Tìm Kiếm</button>
                                                    </div>
                                                    <div class="col-md-9 pull-right">
                                                        <div class="paging pull-right">
                                                            <span>1</span>&nbsp;&nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;">2</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=20&amp;numrows=25&amp;">3</a> &nbsp;<a class="adminmenu" href="/buylink/marketplace.php?offset=10&amp;numrows=25&amp;"><i class="icon-next"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <table class="table table-striped links">
                        <thead>
                        <tr>
                            <th>STT</th>
                            <th>Thông tin</th>
                            <th>Textlink</th>
                            <th>Trên trang</th>
                            <th>Thời gian</th>
                            <th><input type="checkbox"></th>
                        </tr>
                        </thead>
                        <tbody>

                        {section name=i loop=$ids}
                        <tr>
                            <td>1</td>
                            <td width="30%"><a href="{$all[i].url}" target="_blank">{$ids[i].websitename}n</a></td>
                            <td>{$ids[i].ad_des}</td>
                            <td>{$ids[i].ad_url}</td>
                            <td width="13%">{$ids[i].buying_date} - {$ids[i].end_date}</td>
                            <td>0</td>
                        </tr>
                        {/section}



                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>