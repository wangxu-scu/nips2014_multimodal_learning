function [fname, params] = mdrnn_l3_filename(params)

switch params.traintype,
    case 'mdrnn',
        params.usepcd = 0;
        params.draw_sample = 0;
        params.fname = sprintf('%s_%s_x_%d_z_%d_hx_%d_hz_%d_px_%d_pz_%d_top_%d_ln_%d_img_%d_eps_%g_%g_l2r_%g_px_%g_pz_%g_%s_spreg_%g_nmf_%d_bs_%d_up_x_%d_z_%d_mom_%d', ...
            params.dataset, params.traintype, params.numvx, params.numvz, ...
            params.numhx, params.numhz, params.numpx, params.numpz, params.numtop, ...
            params.doc_length, params.imgperbatch, params.eps, params.eps_decay, params.l2reg, ...
            params.px, params.pz, params.sp_type, params.sp_reg_t, params.nmf, ...
            params.batchsize, params.upfactor_x, params.upfactor_z, params.momentum_change);
    case 'mdrnn_xtoz',
        params.usepcd = 0;
        params.draw_sample = 0;
        params.fname = sprintf('%s_%s_x_%d_z_%d_hx_%d_hz_%d_px_%d_pz_%d_top_%d_ln_%d_img_%d_eps_%g_%g_l2r_%g_pz_%g_%s_spreg_%g_nmf_%d_bs_%d_up_x_%d_z_%d_mom_%d', ...
            params.dataset, params.traintype, params.numvx, params.numvz, ...
            params.numhx, params.numhz, params.numpx, params.numpz, params.numtop, ...
            params.doc_length, params.imgperbatch, params.eps, params.eps_decay, params.l2reg, ...
            params.pz, params.sp_type, params.sp_reg_t, params.nmf, ...
            params.batchsize, params.upfactor_x, params.upfactor_z, params.momentum_change);
end

fname = params.fname;
disp(fname);

return;
