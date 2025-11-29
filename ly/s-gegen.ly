\version "2.24.4"
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
      \relative c'' {
        \key es \major
        <<
          {
            \voiceOne
            bes2 g4.( as8) bes2 es, f8( g as bes as4) g f1 \bar "|."
          }
          \new Voice {
            \voiceTwo
            es2 es4.( d8) es2 bes d8( es f g f4) es d1
            
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        \key es \major
        <<
          {
            \voiceOne
            g2 bes4.( as8) g2 bes as4( f bes) bes bes1
          }
          \new Voice {
            \voiceTwo
            es,2 g4.( f8) es2 g f4.( es8 d4) es bes1
          }
        >> 
      }
    >>
  >>
>>
