\version "2.24.4"
\include "layout.ily"

<<
  \new ChoirStaff <<
    \new Staff <<
      \relative c'' {
        \key d \minor
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            \partial 8 {fis8} g g g f es es es e f f f es d d d d es es es d cis cis cis e f f f 
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            \partial 8 {r8} r4. b,8 c c c bes a a a a bes bes bes a g g g g a e' e cis d d d
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "C" \relative c' {
        \key d \minor
        \partial 8 {r8} d d d g g g g e c c c f f f f d bes bes bes d e e a a a a a 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        \key d \minor
        \partial 8 {r8} b, b b g c c c c f f f f bes, bes bes bes es es es es a, a a a d d d
      }
    >>
  >>
>>
