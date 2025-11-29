\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/11)
  }
}
<<
  \new ChoirStaff <<
    \new Staff <<
      \key f \major \relative c'' {
        \time 4/4
        <<
          {
            \voiceOne
            a4 bes a g f e f2
          }
          \new Voice {
            \voiceTwo
            f4 f f d d c c2
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        \key f \major
        <<
          {
            \voiceOne
            c4 d c bes bes g a2
          }
          \new Voice {
            \voiceTwo
            f4 f f g bes, c f2 \bar "|."
          }
        >> 
      }
    >>
  >>
>>
