<extend name="Base:index" />
<block name="body">
hello
	<!-- <form <eq name="Think.ACTION_NAME" value="add"> action="{:U('save')}"<else />action="{:U('update')}"</eq> method="post">
	<input type="hidden" name="id" value="{$user.id}"></input>
	<label>上级菜单：</label>
	<eq name="Think.ACTION_NAME" value="add">
	<select name="pid">
		<foreach name="M:getTitles()" item="title">
  			<option name="type" value="{$title}">{$title}</option>
  		</foreach>
	</select>
	<else />
	{:$M->getMenu()['pid']}
	</eq>
	</br>
	<input type ="hidden" name="id" value="{:$M->getMenu()['id']}" />
	<label>标题：</label><input type ="text" name="name" value="{:$M->getMenu()['name']}" /></br>
	<label>排序：</label><input type ="text" name="sort" value="{:$M->getMenu()['sort']}" /></br>
	<label>关键字：</label><input type = "text" name="keyword" value="{:$M->getMenu()['keyword']}"/></br>
	<label>类型：</label>
	<select name="type">
		<?php $type = $M->getMenu()['type']; ?>
		<eq name="type" value="click">
  			<option name="type" value="click">click</option>
  			<option name="type" value="view">view</option>
  		<else/>
  			<option name="type" value="click">view</option>
  			<option name="type" value="view">click</option>
  		</eq>
	</select>
	</br>
	<label>标题：</label><input type = "text" name="title" value="{:$M->getMenu()['title']}"/></br>
	<label>文章内容：</label><input type = "text" name="content" value="{:$M->getMenu()['content']}"/></br>
	<label>图片链接：</label><input type = "text" name="imgurl" value="{:$M->getMenu()['imgurl']}"/></br>
	<label>跳转链接：</label><input type = "text" name="url" value="{:$M->getMenu()['url']}"/></br>
	<label>回复类型：</label><input type = "text" name="form_type" value="{:$M->getMenu()['form_type']}"/></br>
	<button type="submit">保存</button
	</form> -->
</block>
