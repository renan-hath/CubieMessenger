.class public final enum Lcom/liquable/nemo/message/model/DomainMessage$SendState;
.super Ljava/lang/Enum;
.source "DomainMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/message/model/DomainMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/message/model/DomainMessage$SendState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/message/model/DomainMessage$SendState;

.field public static final enum FAILED:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

.field public static final enum SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

.field public static final enum SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    const-string/jumbo v1, "SEND"

    invoke-direct {v0, v1, v2, v2}, Lcom/liquable/nemo/message/model/DomainMessage$SendState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    new-instance v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4, v3}, Lcom/liquable/nemo/message/model/DomainMessage$SendState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->FAILED:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    new-instance v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v5}, Lcom/liquable/nemo/message/model/DomainMessage$SendState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    .line 20
    new-array v0, v5, [Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    sget-object v1, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->FAILED:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->$VALUES:[Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->value:I

    .line 39
    return-void
.end method

.method public static final fromValue(I)Lcom/liquable/nemo/message/model/DomainMessage$SendState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    :goto_0
    return-object v0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    goto :goto_0

    .line 27
    :pswitch_2
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->FAILED:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    goto :goto_0

    .line 29
    :pswitch_3
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage$SendState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/message/model/DomainMessage$SendState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->$VALUES:[Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    invoke-virtual {v0}, [Lcom/liquable/nemo/message/model/DomainMessage$SendState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    return-object v0
.end method
