\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)  
  }
}
<<
  \new ChoirStaff  <<
    \new Staff <<
      \relative c'' {
        \time 3/4
        \key bes \major
        <<
          {
            \voiceOne
            bes4 bes a bes c8 bes a4 bes4 c c d8 c bes4 a bes2. \bar "|."
          }
          \new Voice {
            \voiceTwo
            d,4 g8 f es4 d g f f es8 d es4 d es es d2.
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        \key bes \major
        <<
          {
            \voiceOne
            bes4 c c bes bes es d g, f bes4 c8 d c4 bes2. 
          }
          \new Voice {
            \voiceTwo
            bes,4 es f d es f bes,8 c bes4 a bes es f bes,2.
          }
        >> 
      }
    >>
  >>
>>

