function Path_Loss = losses(d)
%using Hata Model
  CH = 0.8+(1.1*log10(900)-0.7)*(1.5)-1.56*log10(900);
  Path_Loss = 69.55 + 26.16*log10(900) - 13.82*log10(20)- CH + log10(d)*(44.9-6.55*log10(20));

end