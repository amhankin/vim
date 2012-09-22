set columns=90
set go+=m
"set foldmethod=indent
"set foldlevel=

call IMAP('FOR',"for(<++>; <++>; <++>){\<Enter><++>\<Enter>}\<Enter><++>",'cpp')
call IMAP('IFF',"if(<++>){\<Enter><++>\<Enter>}\<Enter><++>",'cpp')
call IMAP('IFE',"if(<++>){\<Enter><++>\<Enter>}\<Enter>else{\<Enter><++>\<Enter>}<++>",'cpp')

call IMAP('EIF',"else if(<++>){\<Enter><++>\<Enter>}\<Enter><++>",'cpp')
call IMAP('DOW',"do{\<Enter>}while(<++>);\<Enter><++>",'cpp')
