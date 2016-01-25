.class final Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status$1;
.super Ljava/lang/Object;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
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
        "Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 1769
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status$1;->findValueByNumber(I)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 1772
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v0

    return-object v0
.end method
