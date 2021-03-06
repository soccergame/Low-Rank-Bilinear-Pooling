function net=addL2norm(net)
    % implement my own layer, much faster
    net.layers{end+1}=struct('type', 'custom',...
        'forward',  @yang_l2norm_forward, ...
        'backward', @yang_l2norm_backward, ...
        'name', 'L2_normalize');
end