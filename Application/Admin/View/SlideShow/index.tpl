<div>
        <a class="button"  href="{:U('add')}" >添加</a>
    </div>
    <form action="{:U('index')}" method="get">
<table>
		<tr>
			<th>序号</th>
			<th>ID</th>	
			<th>title</th>
			<th>URL</th>
			<?php $order = I('get.order') ?>
			<th><a href="<eq name='order' value="desc"> {:U('index?by=weight&order=asc', I('get.'))}  
			<else/> {:U('index?by=weight&order=desc', I('get.'))} </eq>">权重</a></th>
			<th>状态</th>
			<th>操作</th>
		</tr>
		<foreach name="slideshows" item="slideshow" key="k">
			<tr>
				<td>{$k+1}</td>
				<td>{$slideshow[id]}</td>
				<td>{$slideshow[title]}</td>
				<td>{$slideshow[url]}</td>
				<td>{$slideshow[weight]}</td>
				<td>{$slideshow[status]?'正常':'冻结'}</td>
				<td></td>
				<td><a class="button" href="{:U('detail?id='.$SlideShow['id'].'&p='.I('get.p'))}">查看</a>&nbsp;&nbsp;
				<a class="button" href="{:U('edit?id=' . $SlideShow['id'], I('get.'))}">编辑</a>&nbsp;&nbsp;
				<a class="button" href="{:U('delete?id='.$SlideShow['id'].'&p='.I('get.p'))}">删除</a></td>
			</tr>
		</foreach>	
	</table>
	</form>
	<Yunzhi:page />