# Julia wrapper for header: /usr/include/libavutil/dict.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    av_dict_get,
    av_dict_count,
    av_dict_set,
    av_dict_copy,
    av_dict_free


function av_dict_get(m,key,prev,flags::Integer)
    ccall((:av_dict_get,libavutil),Ptr{AVDictionaryEntry},(Ptr{AVDictionary},Ptr{UInt8},Ptr{AVDictionaryEntry},Cint),m,key,prev,flags)
end

function av_dict_count(m)
    ccall((:av_dict_count,libavutil),Cint,(Ptr{AVDictionary},),m)
end

function av_dict_set(pm,key,value,flags::Integer)
    ccall((:av_dict_set,libavutil),Cint,(Ref{Ptr{AVDictionary}},Ptr{UInt8},Ptr{UInt8},Cint),pm,key,value,flags)
end

function av_dict_copy(dst,src,flags::Integer)
    ccall((:av_dict_copy,libavutil),Cvoid,(Ref{Ptr{AVDictionary}},Ptr{AVDictionary},Cint),dst,src,flags)
end

function av_dict_free(m)
    ccall((:av_dict_free,libavutil),Cvoid,(Ref{Ptr{AVDictionary}},),m)
end
