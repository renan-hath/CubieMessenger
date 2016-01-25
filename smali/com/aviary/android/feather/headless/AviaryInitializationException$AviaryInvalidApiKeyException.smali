.class public final Lcom/aviary/android/feather/headless/AviaryInitializationException$AviaryInvalidApiKeyException;
.super Lcom/aviary/android/feather/headless/AviaryInitializationException;
.source "AviaryInitializationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/headless/AviaryInitializationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AviaryInvalidApiKeyException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "Invalid API-KEY"

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/AviaryInitializationException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
