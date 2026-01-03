\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/11)
  }
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \relative c'' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            \time 3/2
            <c-5>2\glissando <b-3>\glissando <c-1> \bar "||" a\glissando <gis-3>\glissando <a-1> \bar "||" \key f \major <g-6>\glissando <g-5> <f-1>
            %c4 <c-5> b c \bar "||" \key g \major g4 <g-5> fis g \bar "||"\key b \minor b <b-5> ais b \bar "||"\key d \minor a bes a a \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            a2 g e f e e <f-5>~ <f-4>4 <e-3> c2
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <d-6>\glissando <d-5> c d d c
            \key f \major
            bes\glissando <bes-7>~ <bes-4>4 <a-3> \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            f2 g c, <b-6> e a, <d-3> c f
          }
        >> 
      }
    >>
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}
