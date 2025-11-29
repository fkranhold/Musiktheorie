\version "2.24.4"
\include "layout.ily"

\layout {%
  \context {%
    \Score%
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)%
  }%
}%
<<
  \new ChoirStaff <<
    \new Staff <<
      \key c \major \relative c'' {
        \time 4/4
        <<
          {
            \voiceOne
            a b c b e d c2 b4 a a4 a~ a4 gis a2
          }
          \new Voice {
            \voiceTwo
            c,4 d c f e f4 e2 d4 c f4 fis e4 d4 c2
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \key c \major \relative c {
        <<
          {
            \voiceOne
            e4 f e gis a gis a2 gis4 a b4 c b2 a
          }
          \new Voice {
            \voiceTwo
            a,4 gis a d c b c2 f4 e d4 dis e2 a,2 \bar "|."
          }
        >> 
      }
    >>
  >>
>>
