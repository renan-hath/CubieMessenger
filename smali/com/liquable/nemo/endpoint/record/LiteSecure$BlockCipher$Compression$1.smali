.class final Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression$1;
.super Ljava/lang/Object;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
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
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 1919
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression$1;->findValueByNumber(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 1922
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->valueOf(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    move-result-object v0

    return-object v0
.end method
