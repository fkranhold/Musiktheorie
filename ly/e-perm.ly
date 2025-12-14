\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/10)
  }
}
<<
  \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
    (basic-distance . 10)
    (padding . 0)) }
  <<
    \new Staff <<
      \key d \major \transpose c' b {\relative c'' {
        \time 4/4
        \voiceOne \bar "|."
        \repeat volta 2 {\partial 4 {g4} c bes as g f2 g4 d'4 es es d8 c d4 c2. }
        es4 d8 c bes4 c d es2 es4 bes4 c bes as8 g as4 g2. es'4
        d8 es f4 es d c2 d4 g,4 as g f bes g1 \bar "|."
      }}
    >>
    \new Staff <<
      \key d \major\relative c' {
        \clef "bass"
        \time 4/4
        \voiceTwo
        \partial 4 {s4} s1_\markup{\lower #3 \null} s s s %c,4 d e f g2 g, c1
        s1 s s s s s s s 
      }
    >>
  >>
>>
