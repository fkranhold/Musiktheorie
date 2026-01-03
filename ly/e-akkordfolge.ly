\version "2.24.2"
\header { tagline = "" }
#(set-global-staff-size 16)

\paper { line-width = 380\pt }

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/70)
  }
}
<<
  \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
    (basic-distance . 11)
    (padding . 0)) }
  <<
    \new Staff \with { \omit TimeSignature } <<
      \relative c'' {
        \key g \minor
        \time 8/4
        << bes4 \\ g >>
        s2. s1
      }
    >>
    \new Staff \with { \omit TimeSignature } <<
      \relative c' {
        \clef "bass"
        \key g \minor
        \time 8/4
        << d4 \\ g,4 >>
        s2. s1
      }
    >>
  >>
>>
