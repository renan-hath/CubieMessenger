.class public final enum Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
.super Ljava/lang/Enum;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

.field public static final enum DIALER_SYMMETRY_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

.field public static final DIALER_SYMMETRY_KEY_VALUE:I = 0x1

.field public static final enum RECEIVER_PUBLIC_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

.field public static final RECEIVER_PUBLIC_KEY_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;",
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

    .line 2174
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    const-string/jumbo v1, "RECEIVER_PUBLIC_KEY"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->RECEIVER_PUBLIC_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2182
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    const-string/jumbo v1, "DIALER_SYMMETRY_KEY"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->DIALER_SYMMETRY_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2166
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->RECEIVER_PUBLIC_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->DIALER_SYMMETRY_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->$VALUES:[Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2217
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2227
    iput p4, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->value:I

    .line 2228
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2185
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2189
    packed-switch p0, :pswitch_data_0

    .line 2195
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2191
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->RECEIVER_PUBLIC_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    goto :goto_0

    .line 2193
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->DIALER_SYMMETRY_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    goto :goto_0

    .line 2189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2166
    const-class v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    .locals 1

    .prologue
    .line 2166
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->$VALUES:[Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 2232
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->value:I

    return v0
.end method
