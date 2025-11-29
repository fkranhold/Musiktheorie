\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/10)  
  }
}

<<
  \new ChoirStaff  <<
    \new Staff <<
      \relative c'' {
        \time 4/4
        \key g \major
        <<
          {
            \voiceOne
            \partial 4 {g4} a a g as g a? g g fis g~ g fis g1 \bar "|."
          }
          \new Voice {
            \voiceTwo
            \partial 4 {e4} e fis e d e e d e d e~ e dis e1
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        \key g \major
        <<
          {
            \voiceOne
            \partial 4 {b4} c c b b c c b b a ais b2 b1
          }
          \new Voice {
            \voiceTwo
            \partial 4 {e,4} fis dis e f e fis? g cis, d c? b2 e1
          }
        >> 
      }
    >>
  >>
>>
