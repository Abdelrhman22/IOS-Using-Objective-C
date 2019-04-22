

#import "myTableTableViewController.h"

@interface myTableTableViewController ()

@end

@implementation myTableTableViewController

{
    NSMutableArray *males ;
    NSMutableArray *females ;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    males=[NSMutableArray new];
    females=[NSMutableArray new];
    
    [males addObject:@"1 ahmed"];
    [males addObject:@"2 ali"];
    [males addObject:@"3 kamal"];
    [males addObject:@"4 gomaa"];
    [males addObject:@"5 arafa"];
    
    [females addObject:@"1 sara"];
    [females addObject:@"2 salma"];
    [females addObject:@"3 mai"];
    [females addObject:@"4 shreeen"];
    [females addObject:@"5 shimaa"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    NSInteger numOfRows;
    switch (section) {
        case 0:
            numOfRows=[males count];
            break;
        case 1:
             numOfRows=[females count];
            break;
        default:
            numOfRows=0;
            break;
    }
    
    return numOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    switch (indexPath.section)
    {
        case 0:
            cell.textLabel.text=[males objectAtIndex:indexPath.row];
            cell.detailTextLabel.text=@"detailed";
            cell.accessoryType=UITableViewCellAccessoryCheckmark;
            break;
        case 1:
            cell.textLabel.text=[females objectAtIndex:indexPath.row];
            cell.detailTextLabel.text=@"detailed";
            cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
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
    switch (indexPath.section) {
        case 0:
            printf("Males : %s \n",[[males objectAtIndex:indexPath.row] UTF8String]);
            break;
        case 1:
            printf("Females : %s \n",[[females objectAtIndex:indexPath.row] UTF8String]);
            break;
        default:
            break;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        switch (indexPath.section) {
            case 0:
                [males removeObjectAtIndex:indexPath.row];
                break;
            case 1:
                [females removeObjectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


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
