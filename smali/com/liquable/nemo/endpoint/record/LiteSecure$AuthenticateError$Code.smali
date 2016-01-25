.class public final enum Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
.super Ljava/lang/Enum;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

.field public static final enum AUTHENTICATION_FAIL:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

.field public static final AUTHENTICATION_FAIL_VALUE:I = 0x1

.field public static final enum PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

.field public static final PLATFORM_ERROR_VALUE:I = 0x0

.field public static final enum UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

.field public static final UNKNOWN_CODE_VALUE:I = 0x62

.field public static final enum VERSION_INCOMPATIBLE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

.field public static final VERSION_INCOMPATIBLE_VALUE:I = 0x63

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 856
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    const-string/jumbo v1, "PLATFORM_ERROR"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 860
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    const-string/jumbo v1, "AUTHENTICATION_FAIL"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 864
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    const-string/jumbo v1, "UNKNOWN_CODE"

    const/16 v2, 0x62

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 868
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    const-string/jumbo v1, "VERSION_INCOMPATIBLE"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->VERSION_INCOMPATIBLE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 852
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    sget-object v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->VERSION_INCOMPATIBLE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->$VALUES:[Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 908
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 917
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 918
    iput p4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->value:I

    .line 919
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 875
    sparse-switch p0, :sswitch_data_0

    .line 885
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 877
    :sswitch_0
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    goto :goto_0

    .line 879
    :sswitch_1
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    goto :goto_0

    .line 881
    :sswitch_2
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    goto :goto_0

    .line 883
    :sswitch_3
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->VERSION_INCOMPATIBLE:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    goto :goto_0

    .line 875
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x62 -> :sswitch_2
        0x63 -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 852
    const-class v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->$VALUES:[Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    invoke-virtual {v0}, [Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->value:I

    return v0
.end method
