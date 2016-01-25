.class public final enum Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
.super Ljava/lang/Enum;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$StateChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final enum ACCEPT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final enum ACCEPTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final ACCEPTED_VALUE:I = 0x3

.field public static final ACCEPT_VALUE:I = 0x2

.field public static final enum BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final BUSY_VALUE:I = 0x7

.field public static final enum DIAL_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final DIAL_TIMEOUT_VALUE:I = 0x9

.field public static final enum HANG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final HANG_UP_VALUE:I = 0x4

.field public static final enum HUNG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final HUNG_UP_VALUE:I = 0x5

.field public static final enum PEER_BROKEN:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final PEER_BROKEN_VALUE:I = 0x6

.field public static final enum PEER_BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final PEER_BUSY_VALUE:I = 0x8

.field public static final enum RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final RECEIVE_TIMEOUT_VALUE:I = 0xa

.field public static final enum REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final enum REJECTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

.field public static final REJECTED_VALUE:I = 0x1

.field public static final REJECT_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5005
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "REJECT"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5009
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "REJECTED"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5013
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "ACCEPT"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ACCEPT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5017
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "ACCEPTED"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ACCEPTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5021
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "HANG_UP"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->HANG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5025
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "HUNG_UP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->HUNG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5029
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "PEER_BROKEN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->PEER_BROKEN:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5033
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "BUSY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5037
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "PEER_BUSY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->PEER_BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5041
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "DIAL_TIMEOUT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->DIAL_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5045
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    const-string/jumbo v1, "RECEIVE_TIMEOUT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5001
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ACCEPT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ACCEPTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->HANG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->HUNG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->PEER_BROKEN:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->PEER_BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->DIAL_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->$VALUES:[Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5127
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 5136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5137
    iput p4, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->value:I

    .line 5138
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5048
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 5052
    packed-switch p0, :pswitch_data_0

    .line 5076
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5054
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5056
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5058
    :pswitch_2
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ACCEPT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5060
    :pswitch_3
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ACCEPTED:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5062
    :pswitch_4
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->HANG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5064
    :pswitch_5
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->HUNG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5066
    :pswitch_6
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->PEER_BROKEN:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5068
    :pswitch_7
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5070
    :pswitch_8
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->PEER_BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5072
    :pswitch_9
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->DIAL_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5074
    :pswitch_a
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    goto :goto_0

    .line 5052
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5001
    const-class v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    .locals 1

    .prologue
    .line 5001
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->$VALUES:[Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 5142
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->value:I

    return v0
.end method
