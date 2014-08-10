.class public Lcom/mediatek/FMRadio/FrequencyPicker;
.super Landroid/widget/FrameLayout;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true


# instance fields
.field private final mDecimalDisplayValues:[Ljava/lang/String;

.field private final mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

.field private final mIntegerDisplayValues:[Ljava/lang/String;

.field private final mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/FMRadio/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIsEnabled:Z

    .line 38
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "87."

    aput-object v2, v1, v4

    const-string v2, "88."

    aput-object v2, v1, v5

    const-string v2, "89."

    aput-object v2, v1, v6

    const-string v2, "90."

    aput-object v2, v1, v7

    const-string v2, "91."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "92."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "93."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "94."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "95."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "96."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "97."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "98."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "99."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "100."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "101."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "102."

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "103."

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "104."

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "105."

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "106."

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "107."

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "108."

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerDisplayValues:[Ljava/lang/String;

    .line 43
    const/16 v1, 0xce

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "5"

    aput-object v2, v1, v4

    const-string v2, "6"

    aput-object v2, v1, v5

    const-string v2, "7"

    aput-object v2, v1, v6

    const-string v2, "8"

    aput-object v2, v1, v7

    const-string v2, "9"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x94

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x95

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x96

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x97

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x98

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x99

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9a

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x9b

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x9c

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x9d

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x9e

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x9f

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0xa1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0xa2

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xa3

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xa4

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xa5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xa6

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0xa7

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0xa8

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0xa9

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0xaa

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0xab

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0xac

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xad

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xae

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xaf

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xb0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0xb1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0xb2

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0xb3

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0xb4

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0xb5

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0xb6

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xb7

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xb8

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xb9

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xba

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0xbb

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0xbc

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0xbd

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0xbf

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0xc0

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xc1

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xc2

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xc3

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xc4

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0xc5

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0xc6

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0xc7

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0xc8

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0xc9

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0xca

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xcb

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xcc

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xcd

    const-string v3, "0"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalDisplayValues:[Ljava/lang/String;

    .line 66
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030003

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ValuePicker;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    .line 70
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setMinValue(I)V

    .line 71
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setMaxValue(I)V

    .line 72
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerDisplayValues:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    new-instance v2, Lcom/mediatek/FMRadio/FrequencyPicker$1;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FrequencyPicker$1;-><init>(Lcom/mediatek/FMRadio/FrequencyPicker;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setOnValueChangedListener(Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;)V

    .line 89
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ValuePicker;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    .line 90
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    const/16 v2, 0x36b

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setMinValue(I)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    const/16 v2, 0x438

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setMaxValue(I)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalDisplayValues:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    invoke-virtual {v1, v4}, Lcom/mediatek/FMRadio/ValuePicker;->setWrapSelectorWheel(Z)V

    .line 94
    iget-object v1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    new-instance v2, Lcom/mediatek/FMRadio/FrequencyPicker$2;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FrequencyPicker$2;-><init>(Lcom/mediatek/FMRadio/FrequencyPicker;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->setOnValueChangedListener(Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FrequencyPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FrequencyPicker;->setEnabled(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FrequencyPicker;)Lcom/mediatek/FMRadio/ValuePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FrequencyPicker;)Lcom/mediatek/FMRadio/ValuePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    return-object v0
.end method


# virtual methods
.method public getCurrentFrequency()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/ValuePicker;->getValue()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIsEnabled:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;

    .line 171
    .local v0, ss:Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;
    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 172
    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;->getFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FrequencyPicker;->setCurrentFrequency(Ljava/lang/Integer;)V

    .line 173
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 165
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FrequencyPicker;->getCurrentFrequency()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;ILcom/mediatek/FMRadio/FrequencyPicker$1;)V

    return-object v1
.end method

.method public setCurrentFrequency(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentFrequency"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FrequencyPicker;->getCurrentFrequency()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->setValue(I)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->setValue(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/ValuePicker;->setEnabled(Z)V

    .line 115
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FrequencyPicker;->mIsEnabled:Z

    goto :goto_0
.end method
