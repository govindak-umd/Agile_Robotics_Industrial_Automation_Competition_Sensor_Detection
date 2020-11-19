// Generated by gencpp from file nist_gear/GetMaterialLocationsResponse.msg
// DO NOT EDIT!


#ifndef NIST_GEAR_MESSAGE_GETMATERIALLOCATIONSRESPONSE_H
#define NIST_GEAR_MESSAGE_GETMATERIALLOCATIONSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nist_gear/StorageUnit.h>

namespace nist_gear
{
template <class ContainerAllocator>
struct GetMaterialLocationsResponse_
{
  typedef GetMaterialLocationsResponse_<ContainerAllocator> Type;

  GetMaterialLocationsResponse_()
    : storage_units()  {
    }
  GetMaterialLocationsResponse_(const ContainerAllocator& _alloc)
    : storage_units(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::nist_gear::StorageUnit_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::nist_gear::StorageUnit_<ContainerAllocator> >::other >  _storage_units_type;
  _storage_units_type storage_units;





  typedef boost::shared_ptr< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetMaterialLocationsResponse_

typedef ::nist_gear::GetMaterialLocationsResponse_<std::allocator<void> > GetMaterialLocationsResponse;

typedef boost::shared_ptr< ::nist_gear::GetMaterialLocationsResponse > GetMaterialLocationsResponsePtr;
typedef boost::shared_ptr< ::nist_gear::GetMaterialLocationsResponse const> GetMaterialLocationsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator1> & lhs, const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.storage_units == rhs.storage_units;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator1> & lhs, const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nist_gear

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51331790d22677d8b30363fdfeb6b55d";
  }

  static const char* value(const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51331790d22677d8ULL;
  static const uint64_t static_value2 = 0xb30363fdfeb6b55dULL;
};

template<class ContainerAllocator>
struct DataType< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nist_gear/GetMaterialLocationsResponse";
  }

  static const char* value(const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "StorageUnit[] storage_units  # storage units where the material may be found\n"
"\n"
"\n"
"================================================================================\n"
"MSG: nist_gear/StorageUnit\n"
"# StorageUnit message\n"
"# This structure contains the high-level information of an abstract storage unit.\n"
"\n"
"# Storage unit ID\n"
"string unit_id\n"
;
  }

  static const char* value(const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.storage_units);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMaterialLocationsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nist_gear::GetMaterialLocationsResponse_<ContainerAllocator>& v)
  {
    s << indent << "storage_units[]" << std::endl;
    for (size_t i = 0; i < v.storage_units.size(); ++i)
    {
      s << indent << "  storage_units[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::nist_gear::StorageUnit_<ContainerAllocator> >::stream(s, indent + "    ", v.storage_units[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIST_GEAR_MESSAGE_GETMATERIALLOCATIONSRESPONSE_H
