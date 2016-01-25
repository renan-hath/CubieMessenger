.class public Ljni/opus/Opus;
.super Ljava/lang/Object;
.source "Opus.java"


# static fields
.field public static final OPUS_APPLICATION_AUDIO:I = 0x801

.field public static final OPUS_APPLICATION_RESTRICTED_LOWDELAY:I = 0x803

.field public static final OPUS_APPLICATION_VOIP:I = 0x800

.field public static final OPUS_SET_DTX_REQUEST:I = 0xfb0

.field public static final OPUS_SET_INBAND_FEC_REQUEST:I = 0xfac

.field public static final OPUS_SET_PACKET_LOSS_PERC_REQUEST:I = 0xfae


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native opus_decode(J[BI[SII)I
.end method

.method public static native opus_decoder_create(II[I)J
.end method

.method public static native opus_decoder_destroy(J)V
.end method

.method public static native opus_encode(J[SI[BI)I
.end method

.method public static native opus_encoder_create(III[I)J
.end method

.method public static native opus_encoder_ctl(JII)I
.end method

.method public static native opus_encoder_destroy(J)V
.end method

.method public static native opus_strerror(I)Ljava/lang/String;
.end method
