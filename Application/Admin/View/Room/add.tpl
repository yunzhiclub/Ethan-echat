<extend name="Base:index" />
<block name="body">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                </div>
                <div class="panel-body">
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="form-group">
                                    <label>房型</label>
                                    <input class="form-control" id="title" name="title" type="text" value="" />
                                </div>
                                <div class="form-group">
                                    <label>价格</label>
                                    <input class="form-control" id="price" name="price" type="money" value="" />
                                </div>
                                <div class="form-group">
                                    <label>描述</label>
                                    <input class="form-control" id="description" name="description" type="text" value="" />
                                </div>
                                <div class="form-group">
                                    <label>总间数</label>
                                    <input class="form-control" id="total_rooms" name="total_rooms" type="text" value="" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>房型介绍</label>
                                    <div>
                                        <html:editor id="ueditor" type="Ueditor">
                                            
                                        </html:editor>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                        <div class="form-group">
                                               <label>房型图片</label>
                                               <?php $value=""; ?>
                                            <html:uploader value="value" name="filetest">
                                            请选择图片
                                            </html:uploader>
                                        </div>
                            </div>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    {$js}
</block>
