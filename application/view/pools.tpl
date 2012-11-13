{include file=header.tpl}

<div id="nav">
  <ul>
    <li>
      <a class="home" href="index.php" title="{t}Back to the dashboard{/t}">{t}Dashboard{/t}</a>
    </li>
    <li>{t}Pools and Volumes list{/t}</li>
  </ul>
</div>

{foreach from=$pools item=pool key=pool_name}
<div class="main_center">
	<div class="header">{$pool_name}</div>
	<div class="box">
	<table class="grid">
		<tr>
			<th width="120">{t}Volume name{/t}</th>
			<th width="120">{t}Bytes{/t}</th>
			<th width="120">{t}Media Type{/t}</th>
			<th width="140">{t}Expire{/t}</th>
			<th width="140">{t}Last written{/t}</th>
			<th>{t}Status{/t}</th>
		</tr>
		{foreach from=$pool item=volume}
		<tr class="{$volume.odd_even}">
			<td>{$volume.volumename}</td>
			<td>{$volume.volbytes}</td>
			<td>{$volume.mediatype}</td>
			<td>{$volume.expire}</td>
			<td>{$volume.lastwritten}</td>
			<td>{$volume.volstatus}</td>
		</tr>
		{foreachelse}
		<tr>
			<tfoot colspan="6" style="text-align: center; font-weight: bold; font-size: 8pt; padding: 1em; width: 100%;">
				{t}No volume(s) in this pool{/t}
			</tfoot>
		</tr>
		{/foreach}
	</table>	
  </div> <!-- end div box-->
</div> <!-- end div main_center -->
{/foreach}

<!-- End pools.tpl -->

{include file="footer.tpl"}
