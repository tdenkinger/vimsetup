" Vim syntax file
" Language: Use case format by AlistairCockburn
" Maintainer: Gavin Bong <rubycoder@gmail.com>
" Last Change: 12-03-2004
" URL: http://raverun.com/tech/usecase/uc.vim
" SAMPLE: http://raverun.com/tech/usecase/HandleAClaim.uc

if version >= 600
  if exists("b:current_syntax")
    finish
  endif
else
  syntax clear
endif

if version >= 600
  setlocal iskeyword=_,-,.,a-z,A-Z,48-57
else
  set iskeyword=_,-,.,a-z,A-Z,48-57
endif

" Comments {{{
syn match ucSection "^Main Success Scenario"
syn match ucSection "^Extensions" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Includes {{{
syn match ucIncludes "\".*\""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Wikiwords {{{
syn match ucWikiword "\'.*\'"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Constants {{{
syn match ucConstants "\s*UserGoals (Sea Level)" 
syn match ucConstants "\s*Strategic (Kite)" 
syn match ucConstants "\s*Subfunction (Fish)" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Keywords {{{
syn keyword ucHeadings Actor SystemUnderDiscussion UseCaseName GoalLevel Preconditions Trigger System
syn keyword ucRoles Clerk ClaimsAdjuster
syn keyword ucEntities Claim claim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Define the default highlighting {{{
" For version 5.7 and earlier: Only when not done already
" For version 5.8 and later: Only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_usecase_syntax_inits")
  if version < 508
    let did_usecase_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink ucHeadings           Keyword
  HiLink ucConstants          Error
  HiLink ucRoles              Special
  HiLink ucSection            Comment
  HiLink ucIncludes           Function
  HiLink ucEntities           Constant
  HiLink ucWikiword           Todo
  delcommand HiLink
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
let b:current_syntax = "usecase"
