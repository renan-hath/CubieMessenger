.class public final enum Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
.super Ljava/lang/Enum;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Compression"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

.field public static final enum GZIP:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

.field public static final GZIP_VALUE:I = 0x1

.field public static final enum NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

.field public static final NONE_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1888
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 1892
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    const-string/jumbo v1, "GZIP"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->GZIP:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 1884
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    sget-object v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->GZIP:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->$VALUES:[Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 1919
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 1928
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1929
    iput p4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->value:I

    .line 1930
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1895
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1899
    packed-switch p0, :pswitch_data_0

    .line 1905
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1901
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    goto :goto_0

    .line 1903
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->GZIP:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    goto :goto_0

    .line 1899
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1884
    const-class v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .locals 1

    .prologue
    .line 1884
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->$VALUES:[Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    invoke-virtual {v0}, [Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1934
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->value:I

    return v0
.end method
