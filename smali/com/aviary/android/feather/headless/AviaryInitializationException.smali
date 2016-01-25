.class public abstract Lcom/aviary/android/feather/headless/AviaryInitializationException;
.super Ljava/lang/Exception;
.source "AviaryInitializationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/headless/AviaryInitializationException$AviaryInvalidApiKeyException;,
        Lcom/aviary/android/feather/headless/AviaryInitializationException$AviaryInvalidContextException;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static fromInt(I)Lcom/aviary/android/feather/headless/AviaryInitializationException;
    .locals 1
    .param p0, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 32
    packed-switch p0, :pswitch_data_0

    .line 40
    :goto_0
    :pswitch_0
    return-object v0

    .line 36
    :pswitch_1
    new-instance v0, Lcom/aviary/android/feather/headless/AviaryInitializationException$AviaryInvalidContextException;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/AviaryInitializationException$AviaryInvalidContextException;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_2
    new-instance v0, Lcom/aviary/android/feather/headless/AviaryInitializationException$AviaryInvalidApiKeyException;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/AviaryInitializationException$AviaryInvalidApiKeyException;-><init>()V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
