" Vim color file
" Maintainer:	Jens Frederich <jfrederich@gmail.com>

" First remove all old syntax autocommands.
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "developer"

" Console colors
" 0 = rgb: 0/0/0       hex: #000000  black    (text)
" 1 = rgb: 0/128/0     hex: #008000  green    (comments)
" 2 = rgb: 0/0/255     hex: #0000ff  lightblue     (keywords)
" 3 = rgb: 51/94/168   hex: #335EA8  darklightblue (selection)
" 4 = rgb: 163/21/21   hex: #A31515  red      (string, chars, todo, errors)
" 5 = rgb: 255/255/255 hex: #ffffff  white    (todo, selection and errors)

"gui

" Changed this from orange to black
hi Cursor                      		guibg=#000000   gui=NONE

hi Visual          	guifg=#ffffff guibg=#335EA8   gui=NONE	
hi Comment        	guifg=#008000                 gui=NONE  
hi String         	guifg=#A31515                 gui=NONE  
hi Constant	      	guifg=#0000ff                 gui=NONE  
hi Error 		      	guifg=#ffffff guibg=#A31515   gui=NONE  
hi ErrorMsg       	guifg=#ffffff guibg=#A31515   gui=NONE  
hi Search		        guifg=#ffffff guibg=#335EA8   gui=NONE  
hi Directory      	guifg=#0000ff                 gui=NONE  
hi Todo           	guifg=#ffffff guibg=#A31515   gui=NONE  
hi Folded         	guifg=#000000                 gui=NONE  
hi FoldColumn     	guifg=#000000                 gui=NONE  
hi Method         	guifg=#0000ff                 gui=NONE  
hi Special        	guifg=#0000ff                 gui=NONE  
hi SpecialChar    	guifg=#0000ff                 gui=NONE  
hi Identifier     	guifg=#0000ff                 gui=NONE  
hi Statement      	guifg=#0000ff                 gui=NONE  
hi Include        	guifg=#0000ff                 gui=NONE  
hi PreProc        	guifg=#A31515                 gui=NONE  
hi Character	    	guifg=#A31515                 gui=NONE  
hi Number		      	guifg=#0000ff                 gui=NONE  
hi Boolean		    	guifg=#0000ff                 gui=NONE  
hi Float		      	guifg=#0000ff                 gui=NONE  
hi Function	      	guifg=#0000ff                 gui=NONE  
hi Type           	guifg=#0000ff                 gui=NONE  
hi Conditional	  	guifg=#0000ff                 gui=NONE  
hi Repeat		      	guifg=#0000ff                 gui=NONE  
hi Label		      	guifg=#0000ff                 gui=NONE  
hi Operator	      	guifg=#0000ff                 gui=NONE  
hi Keyword		    	guifg=#0000ff                 gui=NONE  
hi Exception	    	guifg=#0000ff                 gui=NONE  
hi Include		    	guifg=#0000ff                 gui=NONE  
hi Define		      	guifg=#0000ff                 gui=NONE  
hi Macro		      	guifg=#0000ff                 gui=NONE  
hi PreCondit	    	guifg=#0000ff                 gui=NONE  
hi StorageClass	  	guifg=#0000ff                 gui=NONE  
hi Structure	    	guifg=#0000ff                 gui=NONE  
hi Typedef		    	guifg=#0000ff                 gui=NONE  
hi Tag		        	guifg=#0000ff                 gui=NONE  
hi Delimiter	    	guifg=#0000ff                 gui=NONE  
hi SpecialComment 	guifg=#0000ff                 gui=NONE  
hi Debug		      	guifg=#0000ff                 gui=NONE  
hi NonText         					                      gui=NONE  
hi VertSplit               					       		    gui=NONE	
hi MatchParen      								guibg=#335EA8             
hi User1          								 							  gui=bold  

" xterm
hi Visual						ctermfg=white				ctermbg=darkblue			cterm=NONE	          
hi Comment          ctermfg=green															cterm=NONE 
hi String           ctermfg=red																cterm=NONE
hi Constant	        ctermfg=lightblue													cterm=NONE
hi Error 		        ctermfg=white				ctermbg=red						cterm=NONE
hi ErrorMsg         ctermfg=white				ctermbg=red						cterm=NONE
hi Search		        ctermfg=white				ctermbg=darkblue			cterm=NONE 
hi Directory        ctermfg=lightblue													cterm=NONE	
hi Todo             ctermfg=white				ctermbg=red						cterm=NONE	
hi Folded           ctermfg=brown				ctermbg=black					cterm=NONE		
hi FoldColumn														ctermbg=black					cterm=NONE
hi Method           ctermfg=lightblue													cterm=NONE
hi Special          ctermfg=lightblue													cterm=NONE
hi SpecialChar      ctermfg=lightblue													cterm=NONE
hi Identifier       ctermfg=lightblue													cterm=NONE
hi Statement        ctermfg=lightblue													cterm=NONE
hi Include          ctermfg=lightblue													cterm=NONE
hi PreProc          ctermfg=red																cterm=NONE
hi Character	      ctermfg=red																cterm=NONE	
hi Number		        ctermfg=lightblue													cterm=NONE
hi Boolean		      ctermfg=lightblue													cterm=NONE
hi Float		        ctermfg=lightblue													cterm=NONE
hi Function	        ctermfg=lightblue													cterm=NONE
hi Type             ctermfg=lightblue													cterm=NONE
hi Conditional	    ctermfg=lightblue													cterm=NONE
hi Repeat		        ctermfg=lightblue													cterm=NONE
hi Label		        ctermfg=lightblue													cterm=NONE
hi Operator	        ctermfg=lightblue													cterm=NONE	
hi Keyword		      ctermfg=lightblue													cterm=NONE
hi Exception	      ctermfg=lightblue													cterm=NONE
hi Include		      ctermfg=lightblue													cterm=NONE
hi Define		        ctermfg=lightblue													cterm=NONE
hi Macro		        ctermfg=lightblue  		         				  	cterm=NONE
hi PreCondit	      ctermfg=lightblue  		         				  	cterm=NONE
hi StorageClass	    ctermfg=lightblue  		         				  	cterm=NONE
hi Structure	      ctermfg=lightblue													cterm=NONE
hi Typedef		      ctermfg=lightblue													cterm=NONE	
hi Tag		          ctermfg=lightblue													cterm=NONE
hi Delimiter	      ctermfg=lightblue													cterm=NONE
hi SpecialComment   ctermfg=lightblue													cterm=NONE
hi Debug		        ctermfg=lightblue													cterm=NONE
hi NonText          ctermfg=lightblue													cterm=NONE
hi VertSplit        																					cterm=NONE term=NONE 
hi MatchParen       ctermfg=black  			ctermbg=darkblue		 	cterm=NONE
hi User1                               				          			cterm=bold

" MiniBufExpl Colors
hi MBEVisibleActive guifg=#A6DB29 guibg=fg
hi MBEVisibleChangedActive guifg=lightred guibg=fg gui=bold
hi MBEVisibleChanged guifg=lightred guibg=fg gui=bold
hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
hi MBEChanged guifg=#CD5907 guibg=fg
hi MBENormal guifg=#808080 guibg=fg

