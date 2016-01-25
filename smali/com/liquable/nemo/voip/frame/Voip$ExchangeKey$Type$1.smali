.class final Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type$1;
.super Ljava/lang/Object;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 2217
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type$1;->findValueByNumber(I)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 2220
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    move-result-object v0

    return-object v0
.end method
