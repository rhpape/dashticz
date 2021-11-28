<table>
	{{#each events as | items |}}
	  {{#ifLe @index ../maxitems}}
		{{#each items as | item |}}
		  <tr  class="event {{item.addClass}}">
			  <td class="eventdate {{item.addClass}}">{{moment item.start input="X" format=../../df}}</td>
		  	  <td class="description {{item.addClass}}" style="color:{{item.color}};">{{item.title}}</td>
		  </tr>
		{{/each}}
	  {{/ifLe}}
	{{else}}
    <div class="agenda-empty">
      {{emptyText}}
    </div>
	{{/each}}
</table>