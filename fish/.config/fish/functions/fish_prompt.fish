function fish_prompt
  set -l stat ""
  if test $status -ne 0
    set stat (set_color red)" $status"(set_color normal)
  end

  set -l jj_status (jj log --no-graph --no-pager --ignore-working-copy\
      -T 'if(empty, "", " Δ")' -r @  2>/dev/null)

  string join '' -- (prompt_pwd) $stat $jj_status ' ; ' 
end
