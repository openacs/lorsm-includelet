<if @use_lc_p@>
    <ul>
        <li><a href="@lors_central_url@">#lorsm-includelet.Manage_LORS#</a></li>
        <li><a href="@lors_central_url@course-add">#lorsm-includelet.Add_a_Course#</a></li>
        <li><a href="/search">#lorsm-includelet.lt_Search_Learning_Objec#</a></li>
    </ul>
</if>
<else>
    <ul>
        <li><a href="@url@admin">#lorsm-includelet.Manage_LORS#</a></li>
        <li><a href="@url@admin/course-add">#lorsm-includelet.Add_a_Course#</a></li>
        <li><a href="/search">#lorsm-includelet.lt_Search_Learning_Objec#</a></li>
    </ul>
</else>
