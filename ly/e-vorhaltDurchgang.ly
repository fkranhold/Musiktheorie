\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/6)  
  }
}

<<
  \new ChoirStaff <<
    \new Staff <<
      \relative c'' {
        \time 2/2
        \key c \minor
        <<
          {
            \voiceOne
            c2~ c4 b c2 c c2~ c4 b c1 \bar "|."
          }
          \new Voice {
            \voiceTwo
            es,4( f) g2 g2~ g4 f es2~ es4 d c1
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        \key c \minor
        <<
          {
            \voiceOne
            g2 g c4( bes?) as2~ as4 g~ g4 f4~( f4 e8 d) e2
          }
          \new Voice {
            \voiceTwo
            c2 d es f c g2 c1
          }
        >> 
      }
    >>
  >>
>>
