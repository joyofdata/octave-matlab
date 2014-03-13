% source: http://stackoverflow.com/a/4756643/562440
%
% requires sox (sudo apt-get install sox)
%
% example: sound(0.3*cos(2*pi/3000000*(0:145000).^2), 44100)


function [ ] = sound (x, sampling_rate)

    if nargin == 1
        sampling_rate = 8000
    end
    file = tmpnam ();
    file= [file, '.wav'];
    wavwrite(x, sampling_rate, file);
    ['play ' file ]
    system(['play ' file ]);
    system(['rm ' file]);
end
