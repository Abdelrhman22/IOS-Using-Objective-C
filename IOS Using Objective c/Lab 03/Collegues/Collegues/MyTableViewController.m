

#import "MyTableViewController.h"
#import "Friend.h"
#import "FreidnManager.h"
#import "ViewController.h"
@interface MyTableViewController ()

@end

@implementation MyTableViewController
{
    NSMutableArray *males;
    NSMutableArray *femals;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    Friend *friend1 =[Friend new];
    Friend *friend2=[Friend new];
    Friend *friend3 =[Friend new];
    [friend1 insertCollegueWithName:@"Arafa" andPhone:@"01097483095" andAge:25 andEmail:@"arafa@yahoo.com" andAddress:@"Fayoum"];
    [friend2 insertCollegueWithName:@"Ahmed" andPhone:@"01097483095" andAge:22 andEmail:@"ahmed@yahoo.com" andAddress:@"Cairo"];
    [friend3 insertCollegueWithName:@"Gomaa" andPhone:@"01145304532" andAge:26 andEmail:@"gomaa@yahoo.com" andAddress:@"Fayoum"];
    FreidnManager *manager=[FreidnManager new];
    [manager addFriend:friend1];
    [manager addFriend:friend2];
    [manager addFriend:friend3];
    males=[manager getAllFriends];
    ///////////////////////////////////////////////////////////////////////////////
    Friend *female1 =[Friend new];
    Friend *female2= [Friend new];
    Friend *female3 =[Friend new];
    [female1 insertCollegueWithName:@"Salma" andPhone:@"01097483095" andAge:25 andEmail:@"salma@yahoo.com" andAddress:@"Fayoum"];
    [female2 insertCollegueWithName:@"Shereen" andPhone:@"01097483095" andAge:22 andEmail:@"shreen@yahoo.com" andAddress:@"Cairo"];
    [female3 insertCollegueWithName:@"Asmaa" andPhone:@"01145304532" andAge:26 andEmail:@"Asmaa@yahoo.com" andAddress:@"Fayoum"];
    FreidnManager *managerfemale=[FreidnManager new];
    [manager addFriend:female1];
    [manager addFriend:female2];
    [manager addFriend:female3];
    femals=[managerfemale getAllFriends];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger NumOfRow;
    switch (section) {
        case 0:
            NumOfRow=[males count];
            break;
        case 1:
            NumOfRow=[femals count];
            break;
        default:
            NumOfRow=0;
            break;
    }
    return NumOfRow;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    switch (indexPath.section)
    {
        case 0:
            cell.textLabel.text=[[males objectAtIndex:indexPath.row] name];
            cell.detailTextLabel.text=@"detailed";
            cell.accessoryType=UITableViewCellAccessoryCheckmark;
            break;
        case 1:
            cell.textLabel.text=[[femals objectAtIndex:indexPath.row] name];
            cell.detailTextLabel.text=@"detailed";
            cell.accessoryType=UITableViewCellAccessoryCheckmark;
            break;
        default:
            break;
    }
    // Configure the cell...
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"Males";
            break;
        case 1:
            return @"Females";
            break;
        default:
            return @"";
            break;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewController *vController = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    switch (indexPath.section) {
        case 0:
            vController.friend=[males objectAtIndex:indexPath.row];
            break;
        case 1:
            vController.friend=[femals objectAtIndex:indexPath.row];
            break;
            
        default:
            break;
    }
    
    [self.navigationController pushViewController:vController animated:YES];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
