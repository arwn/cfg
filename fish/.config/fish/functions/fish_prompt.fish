function fish_prompt
if test -f /.dockerenv
printf "(docker) %% "
else
printf "%% "
end
end
