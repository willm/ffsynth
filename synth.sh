#!/usr/bin/env zsh


char_to_freq() {
  case $1 in
    a)
      freq=261.63;;
    w)
      freq=277.18;;
    s)
      freq=293.66;;
    e)
      freq=311.13;;
    d)
      freq=329.63;;
    f)
      freq=349.23;;
    t)
      freq=369.99;;
    g)
      freq=392.00;;
    y)
      freq=415.30;;
    h)
      freq=440.00;;
    u)
      freq=466.16;;
    j)
      freq=493.88;;
    k)
      freq=523.25;;
  esac

}

while [ true ]
do
  read -s -k1 key
  char_to_freq $key
  ffplay -f lavfi sine=$freq:d=0.2 -autoexit -nodisp -hide_banner -loglevel quiet > /dev/null &
done
