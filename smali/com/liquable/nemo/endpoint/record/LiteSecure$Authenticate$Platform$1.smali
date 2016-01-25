.class final Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform$1;
.super Ljava/lang/Object;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
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
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform$1;->findValueByNumber(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 281
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->valueOf(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    move-result-object v0

    return-object v0
.end method
