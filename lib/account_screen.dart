import 'package:flutter/material.dart';

class UserAccountPage extends StatefulWidget {
  const UserAccountPage({super.key});

  @override
  _UserAccountPageState createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  // User profile section
  Widget _buildUserProfileSection() {
    return Container(
      
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // User profile icon
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          // Navigation links
          Row(
            children: [
              
              _buildNavLink("Change Password"),
              _buildNavLink("Order History"),
              
              
            ],
          ),
        ],
      ),
    );
  }

  // Account details section
  Widget _buildAccountDetailsSection() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display user information
          _buildUserInformation(),
          SizedBox(height: 16),
          // Edit profile button
          ElevatedButton(
            onPressed: () {
              // TODO: Implement edit profile functionality
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent, // Set button color to red
            ),
            child: Text("Edit Profile", style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement edit profile functionality
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent, // Set button color to red
            ),
            child:Text("Logout       ",style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  // Change password section
  Widget _buildChangePasswordSection() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: ElevatedButton(
        onPressed: () {
          // TODO: Implement change password functionality
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 166, 213, 219), // Set button color to red
        ),
        child: Text("Change Password" ,style:TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold ,
              ) ,),
      ),
    );
  }

  // Order history section
  Widget _buildOrderHistorySection() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Table display for order history
          _buildOrderHistoryTable(),
        ],
      ),
    );
  }

  // Wishlist section
  Widget _buildWishlistSection() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display wishlist items
          _buildWishlistItems(),
          SizedBox(height: 16),
          // Quick actions for wishlist
          _buildQuickActions(),
        ],
      ),
    );
  }

  // Address book section
  Widget _buildAddressBookSection() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // List of saved addresses
          _buildSavedAddresses(),
        ],
      ),
    );
  }

  // Payment methods section
  Widget _buildPaymentMethodsSection() {
    return Container(
      padding: EdgeInsets.all(18),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display saved payment methods
          _buildSavedPaymentMethods(),
          SizedBox(height: 16),
          // Add/Edit payment methods
          _buildAddEditPaymentMethods(),
        ],
      ),
    );
  }

  // Subscription preferences section
  Widget _buildSubscriptionPreferencesSection() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // If applicable, allow users to manage subscription preferences
          // TODO: Implement subscription preferences UI
        ],
      ),
    );
  }

  // Logout button
  

  // Helper method to build navigation links
  Widget _buildNavLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          // TODO: Implement navigation for each link
        },
        child: Text(text),
      ),
    );
  }

  // Helper method to build user information display
  Widget _buildUserInformation() {
    // TODO: Display user information (name, email, etc.)
    return Text("User Information Placeholder");
  }

  // Helper method to build order history table
  Widget _buildOrderHistoryTable() {
    // TODO: Implement order history table
    return Text("Order History Table Placeholder");
  }

  // Helper method to build wishlist items display
  Widget _buildWishlistItems() {
    // TODO: Implement wishlist items display
    return Text("Wishlist Items Placeholder");
  }

  // Helper method to build quick actions for wishlist
  Widget _buildQuickActions() {
    // TODO: Implement quick actions for wishlist
    return Text("Quick Actions Placeholder");
  }

  // Helper method to build list of saved addresses
  Widget _buildSavedAddresses() {
    // TODO: Implement list of saved addresses
    return Text("Saved Addresses Placeholder");
  }

  // Helper method to build display of saved payment methods
  Widget _buildSavedPaymentMethods() {
    // TODO: Implement display of saved payment methods
    return Text("Saved Payment Methods Placeholder");
  }

  // Helper method to build add/edit payment methods
  Widget _buildAddEditPaymentMethods() {
    return ElevatedButton(
      onPressed: () {
        // TODO: Implement add/edit payment methods functionality
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 152, 210, 224), // Set button color to red
      ),
      child: Text("Add/Edit Payment Methods",style:TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold ,
              ) ,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildUserProfileSection(),
            _buildAccountDetailsSection(),
            _buildChangePasswordSection(),
            _buildOrderHistorySection(),
            _buildWishlistSection(),
            _buildAddressBookSection(),
            _buildPaymentMethodsSection(),
           
           
          ],
        ),
      ),
    );
  }
}
